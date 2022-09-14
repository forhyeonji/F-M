package com.food.handler;

import com.food.config.ImgConfig;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 이미지 interceptor
 * @author kimseongmin0301
 */
@Component
@RequiredArgsConstructor
public class ImgInterceptor implements HandlerInterceptor {
    private final ImgConfig imgConfig;

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        imgConfig.removeImgMap();

        return true;
    }
}
