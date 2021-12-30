package com.project.atm.system.services;

import com.project.atm.system.model.Account;
import com.project.atm.system.repositories.AccountRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountServiceImpl implements AccountService {
    @Autowired
    private AccountRepository accountRepository;

    @Override
    public List<Account> findAll() {
        return accountRepository.findAll();
    }

    @Override
    public Account get(Long id) {
        return accountRepository.getOne(id);
    }

    @Override
    public Account create(Account account) {
        return accountRepository.saveAndFlush(account);
    }

    @Override
    public void delete(Long id) {
        // Also check for children records before deleting
        accountRepository.deleteById(id);
    }

    @Override
    public Account update(Account account) {
        Account existingAccount = accountRepository.getById(account.getAccount_id());
        BeanUtils.copyProperties(account, existingAccount, "account_id");
        return accountRepository.saveAndFlush(account);
    }

}
