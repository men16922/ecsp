package com.example.abc.service;

import com.example.abc.domain.dto.AbcDTO;
import com.example.abc.domain.entity.Abc;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

/**
 * Service Interface for managing {@link com.example.abc.domain.dto.AbcDTO}.
 */
public interface AbcService {
    /**
     * Save a announcement.
     *
     * @param AbcDTO the entity to save.
     * @return the persisted entity.
     */
    AbcDTO save(AbcDTO AbcDTO);

    /**
     * Updates a announcement.
     *
     * @param AbcDTO the entity to update.
     * @return the persisted entity.
     */
    AbcDTO update(AbcDTO AbcDTO);

    /**
     * Partially updates a announcement.
     *
     * @param AbcDTO the entity to update partially.
     * @return the persisted entity.
     */
    Optional<AbcDTO> partialUpdate(AbcDTO AbcDTO);

    /**
     * Get all the announcements.
     *
     * @return the list of entities.
     */
    Page<AbcDTO> findAll(Abc.AbcStatus abcStatus, Pageable pageable);

    /**
     * Get the "id" announcement.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    Optional<AbcDTO> findOne(String id);

    /**
     * Delete the "id" announcement.
     *
     * @param id the id of the entity.
     */
    void delete(String id);
}
