package com.gottarollwithit.todo.model;

public enum PriorityEnum {

    CRITICAL("priority.critical", "danger"),
    IMPORTANT("priority.important", "warning"),
    MODERATE("priority.moderate", "info"),
    LOW("priority.low", "success"),
    NOT_SPECIFIED("priority.notSpecified", "default");

    private String message;

    private String color;

    PriorityEnum(String message, String color) {
        this.message = message;
        this.color = color;
    }

    public String getMessage() {
        return message;
    }

    public String getColor() {
        return color;
    }
}
