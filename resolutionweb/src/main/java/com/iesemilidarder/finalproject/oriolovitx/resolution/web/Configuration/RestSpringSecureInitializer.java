package com.iesemilidarder.finalproject.oriolovitx.resolution.web.Configuration;

import org.springframework.web.filter.CorsFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import javax.servlet.Filter;

public
class RestSpringSecureInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected
    Class <?>[] getRootConfigClasses ( ) {
        return new Class[0];
    }

    @Override
    protected
    Class <?>[] getServletConfigClasses ( ) {
        return new Class[0];
    }

    @Override
    protected
    String[] getServletMappings ( ) {
        return new String[0];
    }

    @Override
    protected
    Filter [] getServletFilters(){
        Filter [] singleton = {(Filter) new CORSFilter()};
        return singleton;
    }
}
