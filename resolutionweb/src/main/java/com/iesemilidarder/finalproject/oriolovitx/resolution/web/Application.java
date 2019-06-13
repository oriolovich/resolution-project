package com.iesemilidarder.finalproject.oriolovitx.resolution.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication


public class Application extends SpringApplicationBuilder{



            public static void main (String[] args) {

                System.setSecurityManager(new SecurityManager(){
                    @Override
                    public void checkExit(int stattus){
                        throw new ThreadDeath();
                     }
                });
                try {
                    System.exit(0);
                }catch (SecurityException e) {
                    System.out.println("Exit failed.");
                }finally {
                    System.out.println();
                }
            }


        }





