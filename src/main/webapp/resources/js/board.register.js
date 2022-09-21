const regExpPrevent = new RegExp("\.(exe|sh|bat|js|msi|dll)$"); // 실행파일 막기
const regExpImage = new RegExp("\.(jpg|jpeg|png|gif|JPG|JPEG|PNG|GIF)$"); // 이미지 파일만 허용
const maxSize = 2 * 1024 * 1024; // 2MB
function fileSizeAndTypeValidation(fileName, fileSize){
    if(regExpPrevent.test(fileName)){
      return 0;  
    } else if(!regExpImage.test(fileName)){
        return 0;
    } else if(fileSize > maxSize){
        return 0;
    } else {
        return 1;
    }
}