package br.univesp.pi.performancebus;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.data.rest.configuration.SpringDataRestConfiguration;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@Import(SpringDataRestConfiguration.class)
@EnableSwagger2
public class SwaggerConfiguration {

    private static final String PACKAGE_BASE = "br.univesp.pi.performancebus";

    @Value("${info.app.version}")
    private String projectVersion;

    @Value("${info.app.name}")
    private String projectName;

    @Value("${info.app.description}")
    private String projectDescription;

    @Value("${spring.profiles.active}")
    private String activeProfile;

    @Bean
    Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build()
                .useDefaultResponseMessages(false);
    }

    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                .title(projectName)
                .description(projectDescription + " - Profile: " + activeProfile)
                .version(projectVersion)
                .build();
    }

}