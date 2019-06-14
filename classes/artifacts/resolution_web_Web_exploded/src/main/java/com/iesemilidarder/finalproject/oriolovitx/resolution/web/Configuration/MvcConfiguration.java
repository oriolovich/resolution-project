package com.iesemilidarder.finalproject.oriolovitx.resolution.web.Configuration;

import org.springframework.boot.autoconfigure.web.servlet.WebMvcAutoConfiguration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;

public
class MvcConfiguration extends WebMvcAutoConfiguration {
    public void addViewControllers(ViewControllerRegistry registry) {
         registry.addViewController("/opinionsCli").setViewName("opinionsCli");
         registry.addViewController("/").setViewName("opinionsCli");
         registry.addViewController("/comandes").setViewName("comandes");
         registry.addViewController("/login").setViewName("login");

    }
}
