class position
{
   int check01(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i-1 >=0 && j-2 >=0)
    {
      //System.out.println("positions are"+(i-1)+","+(j-2));
       m=(i-1)*8+(j-2);
      //System.out.println( "positions are "+m);

    }
    check02(s);
    check03(s);
    check04(s);
    check05(s);
    check06(s);
    check07(s);
    check08(s);
    return m;
  }
  int check02(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i-2 >=0 && j-1 >=0)
    {
       m=(i-2)*8+(j-1);
      //System.out.println("positions are"+(i-2)+","+(j-1));

    }
    return m;
  }
   int check03(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i-1 >=0 && j+2 <=7)
    {
      m=(i-1)*8+(j+2);
      //System.out.println("positions are"+(i-1)+","+(j+2));

    }
    return m;
  }
  int check04(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i-2 >=0 && j+1 <=7)
    {
      m=(i-2)*8+(j+1);

      //System.out.println("positions are"+(i-2)+","+(j+1));
    }
    return m;
  }

  int check05(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i+1 <=7 && j-2 >=0)
    {
      m=(i+1)*8+(j-2);

      //System.out.println("positions are"+(i+1)+","+(j-2));
    }
    return m;
  }
  int check06(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i+1 <=7 && j+2 <=7)
    {
      m=(i+1)*8+(j+2);

      //System.out.println("positions are"+(i+1)+","+(j+2));
    }
    return m;
  }
  int check07(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i+2 <=7 && j-1 >=0)
    {
       m=(i+2)*8+(j-1);

      //System.out.println("positions are"+(i+2)+","+(j-1));
    }
    return m;
  }
  int check08(int s)
  {
    int j=s%8;
    double i1=s/8;
    int  i=i1.toInt();
    int m=-1;
    if( i+2 <=7 && j+1 <=7)
    {
       m=(i+2)*8+(j+1);

      //System.out.println("positions are"+(i+2)+","+(j+1));
    }
    return m;
  }
}
