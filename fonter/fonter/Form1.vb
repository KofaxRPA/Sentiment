Public Class Form1
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub PictureBox1_Paint(sender As Object, e As PaintEventArgs) Handles PictureBox1.Paint
        Dim FontName As String = "Arial"
        Dim Path As String = "C:\temp\sentiment\font\"
        Dim FontSize As Integer = 12
        Dim widths(65535) As Byte
        Dim width As Integer = 20
        Dim height As Integer = 20
        Dim row As Integer = 32
        Dim bitmap As New Bitmap(width * row, height * row)
        Dim g As Graphics = Graphics.FromImage(bitmap)
        Dim Font As New Font(FontName, FontSize)
        Dim Brush As New SolidBrush(Color.Black)
        Dim TextFormat As TextFormatFlags = TextFormatFlags.NoPadding And TextFormatFlags.Left
        Dim charRanges As CharacterRange() = {New CharacterRange(0, 1)}
        Dim stringformat As New StringFormat
        stringformat.FormatFlags = StringFormatFlags.NoWrap
        stringformat.SetMeasurableCharacterRanges(charRanges)
        'Dim sf As StringFormat = StringFormatFlags
        For p = 0 To 65536 / row ^ 2 - 1 ' Just doing Unicode Plane 0, which includes Chinese, Japanese & Korean https://en.wikipedia.org/wiki/Unicode#Code_point_planes_and_blocks
            g.Clear(Color.White)
            For c = 0 To row ^ 2 - 1
                Dim pos As Integer = c + p * row ^ 2
                Dim ch As String = ChrW(pos)
                Dim rect As New RectangleF((c Mod row) * width, Int(c / row) * height, width, height)
                g.DrawString(ch, Font, Brush, rect, stringformat)
                Dim r As Region() = g.MeasureCharacterRanges(ch, Font, rect, stringformat)
                rect = r(0).GetBounds(g)
                widths(pos) = CByte(rect.Width)
            Next
            '    g.DrawString(StringtoDraw, Font, Brushes.Black, PixelsAcross, PixelsDown)
            PictureBox1.Image = bitmap
            bitmap.Save(Path & "font_" & FontName & "_" & CStr(FontSize) & "_" & Format(p, "00") & ".png", Imaging.ImageFormat.Png)

        Next
        IO.File.WriteAllBytes(Path & "font_" & FontName & "_" & CStr(FontSize) & "_widths.bin", widths)
    End Sub

End Class
