package br.com.impacta.springmvc.gerenciadordespesas.despesas.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.impacta.springmvc.gerenciadordespesas.despesas.model.Despesa;

@Repository
public interface DespesaRepository extends JpaRepository<Despesa,Long>{
	
}
