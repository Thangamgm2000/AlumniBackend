package Model;

import java.lang.System;

public class RandomIdGenerator
{
    public static String getRandomNumber()
    {
        String timestamp = Long.toString(System.currentTimeMillis());
        return timestamp.substring(timestamp.length()-9);
    }
}