import React from 'react';
import { requireNativeComponent } from 'react-native';

const RCTCustomListView = requireNativeComponent('RCTMyCustomView', CustomListView, {});

class CustomListView extends React.PureComponent {
    render() {
        const { data } = this.props;

        return (
        <RCTCustomListView 
            data = {data}
        />
        )
    }
}

export default CustomListView;