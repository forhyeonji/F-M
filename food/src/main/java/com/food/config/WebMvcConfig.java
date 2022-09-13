package com.food.config;

import com.food.handler.ImgInterceptor;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * Web 사용할 configuration 정리
 * @author byoungyoon
 */
@Configuration
@RequiredArgsConstructor
public class WebMvcConfig implements WebMvcConfigurer {
    private final ImgInterceptor imgInterceptor;

    /**
     * interceptor 추가 (img)
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(imgInterceptor)
                .order(1)
                .addPathPatterns("/api/*");
    }
}
