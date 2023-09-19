package com.example.exam_flutter_be.dto;

import com.example.exam_flutter_be.entity.Place;
import lombok.*;
import org.springframework.beans.BeanUtils;

import javax.persistence.Lob;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class PlaceDTO {
    private long id;
    private String thumbnail;
    private String name;
    private Integer star;
    private String address;
    private String description;
    private Float price;

    public PlaceDTO(Place place) {
        BeanUtils.copyProperties(place, this);
    }
}