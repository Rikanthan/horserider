class position
{
  int count;
  position(this.count);
   int check01(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i-1 >=0 && j-2 >=0)
    {
      //System.out.println("positions are"+(i-1)+","+(j-2));
       m=(i-1)*count+(j-2);
      //System.out.println( "positions are "+m);

    }

    return m;
  }
  int check02(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i-2 >=0 && j-1 >=0)
    {
       m=(i-2)*count+(j-1);

    }
    return m;
  }
   int check03(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i-1 >=0 && j+2 <=count-1)
    {
      m=(i-1)*count+(j+2);

    }
    return m;
  }
  int check04(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i-2 >=0 && j+1 <=count-1)
    {
      m=(i-2)*count+(j+1);

    }
    return m;
  }

  int check05(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i+1 <=count-1 && j-2 >=0)
    {
      m=(i+1)*count+(j-2);

    }
    return m;
  }
  int check06(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i+1 <=count-1 && j+2 <=count-1)
    {
      m=(i+1)*count+(j+2);
    }
    return m;
  }
  int check07(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i+2 <=count-1 && j-1 >=0)
    {
       m=(i+2)*count+(j-1);
    }
    return m;
  }
  int check08(int s)
  {
    int j=s%count;
    double i1=s/count;
    int  i=i1.toInt();
    int m=-1;
    if( i+2 <=count-1 && j+1 <=count-1)
    {
       m=(i+2)*count+(j+1);
    }
    return m;
  }
}
