package com.project.atm.system.repositories;

import com.project.atm.system.model.Account;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AccountRepository extends JpaRepository<Account, Long> {}