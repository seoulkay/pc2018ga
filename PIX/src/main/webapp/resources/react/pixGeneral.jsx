/**
 * 
 */

class CreateNew extends React.Component{    
    render() {
        return(
            <div className="layer">
                <div className="bg"></div>
                    <div id="layer2" className="pop-layer">
                        <div className="pop-container">
                            <div className="pop-conts">
                                <p className="ctxt mb20">제목 : <input type="text"></input></p>
                                <textarea id="genInput"></textarea>
                                <div className="btn-r">
                                    <a href="#" className="cbtn">Close</a>
                                </div>
                            </div>
                        </div>
                    </div>
               </div>
            );
        }
    }

ReactDOM.render(
        <CreateNew />,
        <script>CKEDITOR.replace('genInput')</script>,
        document.getElementById('genCreate')
);