package model.bo;

import java.util.List;

import model.bean.PDF2XLS;

public class Data {
    model.dao.Data data = new model.dao.Data();

    public List<PDF2XLS> getStatusFromUser(String user) {
        return data.getStatusFromUser(user);
    }
}
