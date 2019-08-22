import React from 'react';
import ReactDOM from 'react-dom';
import SeasonDisplay from './SeasonDisplay';
import Spinner from './Spinner';

// const App = () => {
//     window.navigator.geolocation.getCurrentPosition(
//         (position) => console.log(position),
//         (err) => console.log(err)
//     );
    
// }

class App extends React.Component {
    // constructor(props) {
    //     super(props);
    //     this.state = { lat: null, errorMessage: '' };  
    // }

    state = {lat: null, errorMessage: '' };

    componentDidMount() {
        window.navigator.geolocation.getCurrentPosition(
            position => {
                this.setState({ lat: position.coords.latitude })
            },
            err => {
                this.setState({ errorMessage: err.message });
            }
        );
    }

    componentDidUpdate() {
        console.log('updated');
    }

    renderContent() {
        if (this.state.errorMessage && !this.state.lat) {
            return <div>Error: {this.state.errorMessage}</div>;
        }
        
        if (!this.state.errorMessage && this.state.lat) {
           return <SeasonDisplay lat={this.state.lat} />; 
        }
        return <Spinner loadingMessage="Please accept the location request" />;
    }

    render() {
        return (
            <div>
                {this.renderContent()}
            </div>
        );
    };
}

ReactDOM.render(
    <App />,
    document.querySelector('#root')
);