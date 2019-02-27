package com.android.gss.guillegram.util;

public class IPGetter {

    private static IPGetter clase;
    final static String IP_LOCAL_SERVIDOR = "192.168.20.118";
//    final static String IP_LOCAL_SERVIDOR = "10.0.2.2";
//    final static String IP_LOCAL_SERVIDOR = "192.168.1.36";

    private IPGetter() {
    }

    public static IPGetter getInstance() {
        if (clase == null) {
            clase = new IPGetter();
        }
        return clase;
    }

    public String getIP() {
        return IP_LOCAL_SERVIDOR;
    }
}