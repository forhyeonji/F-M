package com.food.common;

/**
 * RestController Response Code
 * @author kimseongmin0301
 */
public enum ResCommonCode {
    SUCCESS(true),
    FAILURE(false),
    ;

    private boolean code;
    ResCommonCode(boolean code) { this.code = code; }
}
