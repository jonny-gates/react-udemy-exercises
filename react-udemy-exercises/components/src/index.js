import React from "react";
import ReactDOM from "react-dom";
import faker from 'faker';

import CommentDetail from './CommentDetail';
import ApprovalCard from './ApprovalCard';
function generateAvatar() {
    return faker.image.avatar()
}

const App = () => {
  return (
    <div className="ui container comments">
        <ApprovalCard>
            <CommentDetail 
                author="Sam" 
                timeAgo="3 hours ago" 
                comment="great post!" 
                avatar={generateAvatar()} 
            />
        </ApprovalCard>
        <ApprovalCard>
            <CommentDetail author="Jane" timeAgo="5 hours ago" comment="ok post!" avatar={generateAvatar()} /> 
        </ApprovalCard>
        <ApprovalCard>
            <CommentDetail author="Lila" timeAgo="9 hours ago" comment="rubbish post!" avatar={generateAvatar()} /> 
        </ApprovalCard>
    </div>
  );
};

ReactDOM.render(<App />, document.querySelector("#root"));
