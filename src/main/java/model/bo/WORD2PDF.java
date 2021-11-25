package model.bo;

import java.io.*;
import java.util.concurrent.TimeUnit;

import org.apache.poi.xwpf.converter.core.FileImageExtractor;
import org.apache.poi.xwpf.converter.pdf.PdfConverter;
import org.apache.poi.xwpf.converter.pdf.PdfOptions;
import org.apache.poi.xwpf.usermodel.XWPFDocument;

public class WORD2PDF {
    static model.dao.Data data = new model.dao.Data();

    public static void ConvertToPDF(model.bean.WORD2PDF word) {
        try {
            // Set to coverting...
            data.setStatusResult(word.getSourcePath(), 1);

            // TimeUnit.SECONDS.sleep(10);

            // Working...
            // https://rdtschools.com/how-to-covert-docx-file-to-pdf-using-apache-poi-library-in-java/
            String inputFile = word.getSourcePath();
            String outputFile = word.getTargetPath();
            
            InputStream is = new FileInputStream(inputFile);
            // FileInputStream is = new FileInputStream(new File(inputFile));
            XWPFDocument doc = new XWPFDocument(is);

            OutputStream os = new FileOutputStream(new File(outputFile));
            PdfOptions option = PdfOptions.create().fontEncoding("UTF-8");
            PdfConverter.getInstance().convert(doc, os, option); 

            // Set to successful
            System.out.println("Successful--------------------------------");
            data.setStatusResult(word.getSourcePath(), 2);
        }
        catch (Exception ex) {
            // Failed
            System.out.println(ex);
            System.out.println("Failed--------------------------------");
            data.setStatusResult(word.getSourcePath(), -1);
        }
    }
}
