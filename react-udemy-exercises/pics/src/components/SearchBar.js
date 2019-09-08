import React from 'react';

class SearchBar extends React.Component {
    state = { term: '' }

    onFormSubmit = event => {
        event.preventDefault();
        this.props.onSubmit(this.state.term);
    }

    onFormChange = event => {
        this.setState({ term: event.target.value });
    }

    render() {
        return (
            <div className="ui segment">
                <form onSubmit={this.onFormSubmit} className="ui form">
                    <div className="field">
                        <label>Image search</label>
                        <input 
                            type="text" 
                            onChange={this.onFormChange}
                            value={this.state.term} 
                        />
                    </div>
                </form>
            </div>
        );
    };
};

export default SearchBar