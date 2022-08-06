package com.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class BoardListVO {
    private int id;
    private String title;
    private String author;
    private String writeDate;
}
