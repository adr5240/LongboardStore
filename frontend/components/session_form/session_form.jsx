import React from 'react';
import { Link, withRouter } from 'react-router-dom';

class SessionForm extends React.Component {
	constructor(props) {
		super(props);
		this.state = { username: "", password: "" };
		this.handleSubmit = this.handleSubmit.bind(this);
		this.properCase = this.properCase.bind(this);
		this.switchForm = this.switchForm.bind(this);
	}

	componentDidUpdate() {
		this.redirectIfLoggedIn();
	}

	redirectIfLoggedIn() {
		if (this.props.loggedIn) {
			this.props.history.push("/longboards");
			this.props.getCart().bind(this);
		}
	}

	update(field) {
		return e => this.setState({
			[field]: e.currentTarget.value
		});
	}

	guestLogin(e) {
		e.preventDefault();
		const user = { username: 'Guest', password: 'password' };
		this.props.processForm({user});
	}

	handleSubmit(e) {
		e.preventDefault();
		const user = this.state;
		this.props.processForm({user});
	}

	properCase(str) {
		return str.charAt(0).toUpperCase() + str.slice(1);
	}

	switchForm(e) {
		let location = this.props.formType;
		let str = location == 'login' ? '/signup' : '/login';
		this.props.clearErrors();
		this.props.history.push(str);
	}

	renderErrors() {
		if(this.props.errors.length > 0) {
			return(
				<ul>
					{this.props.errors.map((error, i) => (
						<li className='error' key={`error-${i}`}>
							{ error }
						</li>
					))}
				</ul>
			);
		}
	}

	render() {
		let submit = this.properCase(this.props.formType),
			switchForm = this.props.formType == 'login' ? 'Go to Signup' : 'Go to Login',
			divider = this.props.formType == 'login' ? 'New to Our Site?' : 'Returning Customer?';
		return (
			<div className="login-form-container">
				{this.renderErrors()}
				<form onSubmit={this.handleSubmit} className="login-form-box">
					<div className="login-form-box">
						<h1 className="login-title">Please {submit}!</h1>

						<div className="login-form">
							<br/>
							<label> Username:
								<br/>
								<input type="text"
									value={this.state.username}
									onChange={this.update("username")}
									className="login-input" />
							</label>
							<br/>
							<label> Password:
								<br/>
								<input type="password"
									value={this.state.password}
									onChange={this.update("password")}
									className="login-input" />
							</label>
							<br/>
							<button className="login-submit" type="submit">{submit}</button>
							<button className="guest-login login-submit" onClick={this.guestLogin.bind(this)}>Guest Login</button>

							<div className="login-divider"><h5>{divider}</h5></div>
							<button className="form-switch" type='button' onClick={this.switchForm}>{switchForm}</button>
						</div>
					</div>
				</form>
			</div>
		);
	}
}

export default withRouter(SessionForm);
