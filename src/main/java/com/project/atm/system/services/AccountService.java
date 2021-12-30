package com.project.atm.system.services;

import com.project.atm.system.model.Account;

import java.util.List;

public interface AccountService {
    List<Account> findAll();

    Account get(Long id);

    Account create(Account account);

    void delete(Long id);

    Account update(Account account);
}
