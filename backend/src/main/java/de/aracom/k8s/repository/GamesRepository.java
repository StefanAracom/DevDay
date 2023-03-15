package de.aracom.k8s.repository;
import de.aracom.k8s.bean.Games;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface GamesRepository extends JpaRepository<Games, Integer> {
    List<Games> findAll();
}
