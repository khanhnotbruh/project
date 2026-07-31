#include <stdio.h>
#include <stdint.h>
int main(int argc,char**argv){
  uint8_t inp[128]={0};
  FILE*edid=fopen("edid.bin","r+b");
  uint8_t buf[128]={0};
  size_t len=fread(buf,1,128,edid);
  if(len<128){
    printf("something went wrong\n");
    fclose(edid);
    return 1;
  }

  fseek(edid,0,SEEK_SET);
  fwrite(buf,1,128,edid);
}
