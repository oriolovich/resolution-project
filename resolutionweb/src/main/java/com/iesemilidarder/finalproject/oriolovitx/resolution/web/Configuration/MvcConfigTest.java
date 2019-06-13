package com.iesemilidarder.finalproject.oriolovitx.resolution.web.Configuration;

import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.asset.EmptyAsset;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.junit.Before;
import org.junit.runner.RunWith;

import static org.junit.Assert.*;

@RunWith(Arquillian.class)
public
class MvcConfigTest {
    @Deployment
    public static
    JavaArchive createDeployment ( ) {
        return ShrinkWrap.create(JavaArchive.class)
                .addClass(MvcConfig.class)
                .addAsManifestResource(EmptyAsset.INSTANCE, "beans.xml");
    }

    @Before
    public
    void setUp ( ) throws Exception {
    }
}
