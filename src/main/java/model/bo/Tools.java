package model.bo;

import java.util.Random;

public class Tools {
    private static final String acceptable = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuwxyz0123456789";
    private static Random rd = new Random();

    // https://stackoverflow.com/a/2626989
    public static String GenerateString(int size) {
        String result = "";

        while (size > 0) {
            result += acceptable.charAt(rd.nextInt(acceptable.length()));
            size -= 1;
        }

        return result;
    }
}
