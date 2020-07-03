package com.km.yak.exception;

public class AlreadyExistingIdException extends RuntimeException{
    public AlreadyExistingIdException(String message) {
        super(message);
    }
}