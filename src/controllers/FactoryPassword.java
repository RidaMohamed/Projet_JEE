package controllers;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * The type Factory password.
 */
public class FactoryPassword {


    /**
     * Gets hash.
     *
     * @param pass the pass
     * @return the hash
     */
    public static String getHash(String pass) {

        MessageDigest digest = null;
        try {
            digest = MessageDigest.getInstance("SHA-256");
            byte[] encodedhash = digest.digest(pass.getBytes(StandardCharsets.UTF_8));

            return bytesToHex(encodedhash);

        }catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        return "error";
    }

    private static String bytesToHex(byte[] hash) {
        StringBuffer hexString = new StringBuffer();
        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if(hex.length() == 1) hexString.append('0');
            hexString.append(hex);
        }
        return hexString.toString();
    }
}
