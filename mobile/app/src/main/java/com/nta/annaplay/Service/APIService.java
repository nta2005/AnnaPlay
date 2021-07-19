package com.nta.annaplay.service;

public class APIService {

    private static  String base_url = "https://annaplay.000webhostapp.com/Server/";
    //Function để kết hợp API Retrofit với Data service:
    public static DataService getService(){
        return APIRetrofitClient.getClient(base_url).create(DataService.class);
    }
}
