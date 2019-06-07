package com.iesemilidarder.finalproject.oriolovitx.resolution.web.Configuration;


import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration

public class StartConfig {

    @Bean
    public
    WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public
            void addCorsMappings (CorsRegistry registry) {
                WebMvcConfigurer.super.addCorsMappings(registry);
                registry.addMapping("/api/**");
            }

        };

        }
    }
