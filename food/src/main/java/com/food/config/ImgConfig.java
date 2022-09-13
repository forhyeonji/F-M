package com.food.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/**
 * img 임시 저장을 위한 config
 * @author byoungyoon
 */
@Component
@Slf4j
public class ImgConfig {
    private ConcurrentHashMap<String, byte[]> imgMap = new ConcurrentHashMap<>();

    /**
     * 이미지 임시저장
     * @param bytes
     * @return
     */
    public String registerImgMap(byte[] bytes){
        String id = UUID.randomUUID().toString();
        imgMap.put(id, bytes);

        return id;
    }

    /**
     * 이미지 임시저장값 가져오기
     * @param id
     * @return
     */
    public byte[] getImgMap(String id){ return imgMap.get(id); }

    /**
     * 이미지 임시저장값 전체 제거
     */
    public void removeImgMap(){ imgMap.clear(); }
}
