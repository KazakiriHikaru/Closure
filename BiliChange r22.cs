        //BiliChange r22
        private void buttonBiliChange_Click(object sender, EventArgs e)
        {
            //table = 'fZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcF'
            //tr ={ }
            //for i in range(58):
            //tr[table[i]] = i
            //s =[11, 10, 3, 8, 4, 6]
            //xor = 177451812
            //add = 8728348608
            //def dec(x):
            //r = 0
            //for i in range(6):
            //r += tr[x[s[i]]] * 58 * *i
            //return (r - add) ^ xor
            //def enc(x):
            //x = (x ^ xor) + add
            //r = list('BV1  4 1 7  ')
            //for i in range(6):
            //r[s[i]] = table[x//58**i%58]
            //return ''.join(r)
            //作者：mcfx
            //链接：https://www.zhihu.com/question/381784377/answer/1099438784
            //BV1mK4y1C7Bz = 882584971
            if (textBoxBiliChange.Text != "")
            {
                try
                {
                    string TABLE = "fZodR9XQDSUm21yCkr6zBqiveYah8bt4xsWpHnJE7jL5VG3guMTKNPAwcF";
                    System.Collections.Generic.Dictionary<string, long> BVChange = new System.Collections.Generic.Dictionary<string, long>();
                    System.Collections.Generic.Dictionary<long, string> AVChange = new System.Collections.Generic.Dictionary<long, string>();
                    int[] S = { 11, 10, 3, 8, 4, 6 };
                    long XOR = 177451812;
                    long ADD = 8728348608;
                    //BV2AV
                    if (textBoxBiliChange.Text.ToUpper().Substring(0, 2) == "BV" && textBoxBiliChange.TextLength == 12)
                    {
                        string OLDBILI = textBoxBiliChange.Text;
                        BVChange.Clear();
                        for (int i = 0; i < 58; i++)
                        {
                            BVChange.Add(TABLE.Substring(i, 1), i);
                        }
                        long T = 0;
                        for (int i = 0; i < 6; i++)
                        {
                            T += BVChange[textBoxBiliChange.Text.Substring(S[i], 1)] * Convert.ToInt64(Math.Pow(58, i));
                        }
                        linkLabelBiliChange.Text = "av" + ((T - ADD) ^ XOR);
                    }
                    //AV2BV
                    if (textBoxBiliChange.Text.ToUpper().Substring(0, 2) == "AV")
                    {
                        string OLDBILI = textBoxBiliChange.Text;
                        AVChange.Clear();
                        System.Text.StringBuilder BUILD = new System.Text.StringBuilder("BV1  4 1 7  ");
                        for (int i = 0; i < 58; i++)
                        {
                            AVChange.Add(i, TABLE.Substring(i, 1));
                        }
                        for (int i = 0; i < 6; i++)
                        {
                            string T = AVChange[Convert.ToInt64(((Convert.ToInt64(textBoxBiliChange.Text.Remove(0, 2)) ^ XOR) + ADD) / Math.Pow(58, i) % 58)];
                            int INDEX = Convert.ToInt32(S[i].ToString());
                            for (int j = 0; j < BUILD.Length; j++)
                            {
                                BUILD[INDEX] = T.ToCharArray()[0];
                            }
                        }
                        linkLabelBiliChange.Text = BUILD.ToString();
                    }
                    Clipboard.SetDataObject(linkLabelBiliChange.Text);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
        }
    }
}