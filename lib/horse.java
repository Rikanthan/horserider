public class horse {
    public int check1(int i,int j,int arr[][])
    {
        int a=-1;

        if( i-1 >=0 && j-2 >=0)
        {
            //System.out.println("positions are"+(i-1)+","+(j-2));
            a=arr[i-1][j-2];
        }

        check2(i,j,arr);
        check3(i,j,arr);
        check4(i,j,arr);
        check5(i,j,arr);
        check6(i,j,arr);
        check7(i,j,arr);
        check8(i,j,arr);
        return  a;
    }
    public int check2(int i,int j,int arr[][])
    {
        int a=-1;
        if( i-2 >=0 && j-1 >=0)
        {
            //System.out.println("positions are"+(i-2)+","+(j-1));
            a=arr[i-2][j-1];
        }
        return  a;
    }
    public int check3(int i,int j,int arr[][])
    {
        int a=-1;
        if( i-1 >=0 && j+2 <=7)
        {
            //System.out.println("positions are"+(i-1)+","+(j+2));
            a=arr[i-1][j+2];
        }
        return  a;
    }
    public int check4(int i,int j,int arr[][])
    {
        int a=-1;
        if( i-2 >=0 && j+1 <=7)
        {
            a=arr[i-2][j+1];
            //System.out.println("positions are"+(i-2)+","+(j+1));
        }
        return a;

    }

    public int check5(int i,int j,int arr[][])
    {
        int a=-1;
        if( i+1 <=7 && j-2 >=0)
        {
           a=arr[i+1][j-2];
            //System.out.println("positions are"+(i+1)+","+(j-2));
        }
        return  a;
    }
    public int check6(int i,int j,int arr[][])
    {
        int a=-1;
        if( i+1 <=7 && j+2 <=7)
        {
            a=arr[i+1][j+2];
            //System.out.println("positions are"+(i+1)+","+(j+2));
        }
        return a;
    }
    public int check7(int i,int j,int arr[][])
    {
        int a=-1;
        if( i+2 <=7 && j-1 >=0)
        {
            a=arr[i+2][j-1];
            //System.out.println("positions are"+(i+2)+","+(j-1));
        }
        return  a;
    }
    public int check8(int i,int j,int arr[][])
    {
        int  a=-1;
        if( i+2 <=7 && j+1 <=7)
        {
           a=arr[i+2][j+1];
            //System.out.println("positions are"+(i+2)+","+(j+1));
        }
        return  a;
    }
    public void eleCheck(int x)
    {
        int arr[][]=new int[8][8];
        int c=0;
        for(int a=0;a<8;a++)
        {
            for(int b=0;b<8;b++)
            {
                arr[a][b]=c;
                c++;
            }
        }
        for(int a=0;a<8;a++)
        {
            for(int b=0;b<8;b++)
            {
                if(arr[a][b]==x)
                {
                    check1(a,b,arr);
                    break;
                }


            }
        }

    }

}
