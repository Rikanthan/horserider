class finish
{
  int possible01(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i-1 >=0 && j-2 >=0)
    {
      //System.out.println("positions are"+(i-1)+","+(j-2));
      m=(i-1)*8+(j-2);
      if(arr.contains(m)==true)
      {
        m=-1;
      }
     

    }
   
    return m;
  }
  int possible02(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i-2 >=0 && j-1 >=0)
    {
      m=(i-2)*8+(j-1);
      if(arr.contains(m)==true)
      {
        m=-1;
      }
      //System.out.println("positions are"+(i-2)+","+(j-1));

    }
    return m;
  }
  int possible03(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i-1 >=0 && j+2 <=7)
    {
      m=(i-1)*8+(j+2);
      if(arr.contains(m)==true)
      {
        m=-1;
      }
      //System.out.println("positions are"+(i-1)+","+(j+2));

    }
    return m;
  }
  int possible04(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i-2 >=0 && j+1 <=7)
    {
      m=(i-2)*8+(j+1);
      if(arr.contains(m)==true)
      {
        m=-1;
      }

      //System.out.println("positions are"+(i-2)+","+(j+1));
    }
    return m;
  }

  int possible05(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i+1 <=7 && j-2 >=0)
    {
      m=(i+1)*8+(j-2);
      if(arr.contains(m)==true)
      {
        m=-1;
      }

      //System.out.println("positions are"+(i+1)+","+(j-2));
    }
    return m;
  }
  int possible06(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i+1 <=7 && j+2 <=7)
    {
      m=(i+1)*8+(j+2);
      if(arr.contains(m)==true)
      {
        m=-1;
      }

      //System.out.println("positions are"+(i+1)+","+(j+2));
    }
    return m;
  }
  int possible07(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i+2 <=7 && j-1 >=0)
    {
      m=(i+2)*8+(j-1);
      if(arr.contains(m)==true)
      {
        m=-1;
      }

      //System.out.println("positions are"+(i+2)+","+(j-1));
    }
    return m;

  }
  int possible08(int s,List arr)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if(arr.contains(s)==true && i+2 <=7 && j+1 <=7)
    {
      m=(i+2)*8+(j+1);
      if(arr.contains(m)==true)
      {
        m=-1;
      }

      //System.out.println("positions are"+(i+2)+","+(j+1));
    }
    return m;
  }
}
