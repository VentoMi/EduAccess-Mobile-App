cordova.plugins.fileOpener2.showOpenWithDialog(
    '"C:\Users\User\Desktop\Html\Media\PDFs\Sample PDF.pdf"', // You can also use a Cordova-style file uri: cdvfile://localhost/persistent/Download/starwars.pdf
    'application/pdf', 
    { 
        error : function(e) { 
            console.log('Error status: ' + e.status + ' - Error message: ' + e.message);
        },
        success : function () {
            console.log('file opened successfully'); 				
        }
    }
);