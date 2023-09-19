package com.example.exam_flutter_be.service;

import com.example.exam_flutter_be.dto.PlaceDTO;
import com.example.exam_flutter_be.entity.Place;
import com.example.exam_flutter_be.repository.PlaceRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PlaceService {
    private PlaceRepository placeRepository;

    public List<Place> findAll() {
        return placeRepository.findAll();
    }

    public Optional<Place> findById(long id) {
        return placeRepository.findById(id);
    }

}