#define A 3
int main()
{
    int c = 1, b = 2, a = A, accum = 0;
    for (int i = 0; i < a; i++)
    {
        for (int j = 0; j < b; j++)
        {
            for (int k = 0; k < c; k++)
            {
                accum += 1;
            }
        }
    }

    return 0;
}