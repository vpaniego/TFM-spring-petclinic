package org.springframework.samples.petclinic.vets.swagger2.config;

import java.util.Collections;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RestController;

import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class SpringFoxSwaggerConfig {
    
    @Bean
    public Docket apiDocket() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.withClassAnnotation(RestController.class))
                .paths(PathSelectors.any())
                .build()
                .apiInfo(apiInfo());
    }

    private ApiInfo apiInfo() {
        return new ApiInfo(
          "Documentación de spring-petclinic-vets-service", 
          "Esta página documenta los endpoints del servicio Veterinarians, servicio que provee de veterinarios a la aplicación Petclinic.", 
          "2.2.2", 
          "", //Terms of service
          new Contact("Roberto Martín Escribano y Vanesa Paniego Seco", "", "roberto.martin.escribano@alumnos.upm.es;vanesa.paniegos@alumnos.upm.es"), 
          "Apache 2.0", "https://www.apache.org/licenses/LICENSE-2.0", Collections.emptyList());
    }
    
}