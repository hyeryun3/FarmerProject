package com.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
public class BoardVO {
    private int idx;
    private String title;
    private String content;
    private String writeDate;
    private int uId;
}
