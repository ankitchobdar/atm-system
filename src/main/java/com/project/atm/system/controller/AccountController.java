package com.project.atm.system.controller;

import com.project.atm.system.model.Account;
import com.project.atm.system.services.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/accounts")
public class AccountController {
    @Autowired
    private AccountServiceImpl accountService;

    @GetMapping
    public List<Account> list() {return accountService.findAll();}

    @GetMapping
    @RequestMapping("{id}")
    public Account get(@PathVariable Long id) {
        return accountService.get(id);
    }

    @PostMapping
    public Account create(@RequestBody final Account account) {
        return accountService.create(account);
    }

    @RequestMapping(value = "{id}", method = RequestMethod.DELETE)
    public void delete(@PathVariable Long id) {
        accountService.delete(id);
    }

    @RequestMapping(value = "{id}", method = RequestMethod.PUT)
    public Account update(@PathVariable Long id, @RequestBody Account account) {
        return accountService.update(account);
    }
}
