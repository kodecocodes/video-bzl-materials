package com.example;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.Random;

public class KnockKnock {
    private static final int TOTAL_JOKES = 6;

    public static void main(String[] args) throws IOException {
        KnockKnock knock = new KnockKnock();
        knock.printJoke(knock.getRandomNumber());
    }

    public void printJoke(int jokeNumber) throws IOException {
        String fileName = jokeNumber + ".txt";
        InputStream resourcesStream = KnockKnock.class.getClassLoader().getResourceAsStream(fileName);
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(resourcesStream, StandardCharsets.UTF_8));

        String text;
        while((text = bufferedReader.readLine()) != null) {
            System.out.println(text);
            System.in.read();
        }
    }

    private int getRandomNumber() {
        Random rand = new Random();
        return rand.nextInt(TOTAL_JOKES - 1) + 1;
    }
}