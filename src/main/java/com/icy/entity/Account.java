package com.icy.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "account")
public class Account implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private int user_id;
	@NotEmpty
	private String username;
	private String password;
	private boolean enabled = true;
	private boolean receiveNewsletter = true;
	private String email;
	private String confirmPassword;
	private Authority authority;
	private List<Challenge> challenges;
	private List<ChallengeAccepted> challengeaccepted;


	public Account() {
	}

	public Account(String username, String password, boolean enabled) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;

	}

	public Account(String username, String password, Authority authority) {
		this.authority = authority;
		this.username = username;
		this.password = password;

	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "user_id", unique = true, nullable = false)
	public int getId() {
		return this.user_id;
	}

	public void setId(int id) {
		this.user_id = id;
	}

	@Column(name = "Username", unique = true, nullable = false, length = 45)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "Password", nullable = false, length = 128)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "Enabled", nullable = true)
	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Transient
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	@Column(name = "Email", nullable = false)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "AuthId", nullable = false)
	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}

	@Column(name = "ReceiveNewsletter", nullable = true)
	public boolean isReceiveNewsletter() {
		return receiveNewsletter;
	}

	public void setReceiveNewsletter(boolean receiveNewsletter) {
		this.receiveNewsletter = receiveNewsletter;
	}
	
	@OneToMany(mappedBy = "owner")
	@Column(name = "User_Created_Challenge", nullable = true)
	public List<Challenge> getChallenges() {
		return challenges;
	}

	public void setChallenges(List<Challenge> challenges) {
		this.challenges = challenges;
	}

	@OneToMany(mappedBy = "user")
	public List<ChallengeAccepted> getChallengeaccepted() {
		return challengeaccepted;
	}

	public void setChallengeaccepted(List<ChallengeAccepted> challengeaccepted) {
		this.challengeaccepted = challengeaccepted;
	}

	@Override
	public String toString() {
		return "Account [user_id=" + user_id + ", username=" + username
				+ ", password=" + password + ", enabled=" + enabled
				+ ", receiveNewsletter=" + receiveNewsletter + ", email="
				+ email + ", confirmPassword=" + confirmPassword
				+ ", authority=" + authority + "]";
	}

}
