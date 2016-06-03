package com.habibur.notices.controllers.dau;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component("userDau")
public class UserDau {
	
	private NamedParameterJdbcTemplate njdbc;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	public void setDataSource(DataSource source){
		njdbc = new NamedParameterJdbcTemplate(source);
	}

	@Transactional
	public boolean createUsers(User user){
		MapSqlParameterSource param = new MapSqlParameterSource();
	    param.addValue("username", user.getUsername());
	    param.addValue("password", passwordEncoder.encode(user.getPassword()));
	    param.addValue("email", user.getEmail());
	    param.addValue("enabled", true);
	    param.addValue("authority", "ROLE_USER");
	    
		njdbc.update("insert into users (username, password, email, enabled) values(:username, :password, :email, :enabled)", param);
		return njdbc.update("insert into authorities (username, authority) values(:username, :authority)", param) == 1;
	}

}
