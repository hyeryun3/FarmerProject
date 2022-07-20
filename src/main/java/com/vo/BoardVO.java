package com.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
public class BoardVO {
    private int id;
    private String title;
    private String text;
    private String writeDate;
    private int userId;
}
