   
   function	trocaBanner() {
                   
    let i=Math.floor(Math.random(6)*10);
                       
if(i>=0 && i<=7){
    document.querySelector('#f ').src	=`../public/assets/escola/escola${i}.jpg`	;
 }else{
     i=2;
    document.querySelector('#f ').src=`../public/assets/escola/escola${i}.jpg`;
 }
}

function	trocaBanner1() {
                
                let i=Math.floor(Math.random(6)*10);
                                   
            if(i>=0 && i<=7){
                document.querySelector('#j ').src	=`../public/assets/escola/escola${i}.jpg`	;
             }else{
                 i=2;
                document.querySelector('#j ').src=`../public/assets/escola/escola${i}.jpg`;
             }
            }

                    setInterval(trocaBanner,	4000);
                    
                    setInterval(trocaBanner1,	10000);
