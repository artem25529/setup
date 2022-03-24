package com.es;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Phone {
    public String getPhone(String surname) {
        String phone = null;
        String line;

        try {
            FileReader reader = new FileReader("phones.txt");
            BufferedReader bufferedReader = new BufferedReader(reader);

            while ((line = bufferedReader.readLine()) != null) {
                String[] str = line.split(" ");
                if (str[0].equals(surname)) {
                    phone = str[1];
                    break;
                }
            }

            if (phone == null) {
                phone = "no such name";
            }

        } catch (IOException e) {
            e.printStackTrace();
        }

        return phone;
    }

    public String getName(String phone) {
        String surname = null;

        try (BufferedReader reader = new BufferedReader(new FileReader("phones.txt"))) {
            String line;
            String[] parts;
            while ((line = reader.readLine()) != null) {
                parts = line.split(" ");
                if (parts[1].equals(phone)) {
                    surname = parts[0];
                    break;
                }
            }

            if (surname == null) {
                surname = "no such phone";
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return surname;
    }
}
