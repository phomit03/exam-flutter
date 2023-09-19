package com.example.exam_flutter_be.entity;

import com.example.exam_flutter_be.dto.PlaceDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.BeanUtils;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "place")
public class Place {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String thumbnail;
    private String name;
    private Integer star;
    @Lob
    private String description;
    private String address;
    private Float price;

    public Place(PlaceDTO placeDTO) {
        BeanUtils.copyProperties(placeDTO, this);
    }
}