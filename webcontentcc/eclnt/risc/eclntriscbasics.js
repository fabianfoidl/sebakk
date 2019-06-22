var RISCSTYLE = new Object();
RISCSTYLE.riscdefault = {};
RISCSTYLE.variables = new Array();

var RISCTOUCHLAYOUTS = new Object();
var RISCTOUCHLAYOUTPROPOSALS = new Object();

function RISCFont(family,size,weight,style,textDecoration)
{
    this.family;
    this.size;
    this.weight;
    this.style;
    this.textDecoration;
    if (family != null) this.family = family;
    if (size != null) this.size = size;
    if (weight != null) this.weight = weight;
    if (style != null) this.style = style;
    if (textDecoration != null) this.textDecoration = textDecoration;
    this.toStyle = function()
    {
        var result = "";
        if (this.weight != null) result += this.weight + " ";
        if (this.style != null) result += this.style + " ";
        result += this.size + "px ";
        result += this.family;
        return result;
    };
    this.add = function(f)
    {
        if (f != null)
        {
            if (f.family != null) this.family = f.family;
            if (f.size != null) this.size = f.size;
            if (f.weight != null) this.weight = f.weight;
            if (f.style != null) this.style = f.style;
            if (f.textDecoration != null) this.textDecoration = f.textDecoration;
        }
        return this;
    };
}

function RISCPoint(left,top)
{
    this.left = 0;
    this.top = 0;
    if (left != null) this.left = left;
    if (top != null) this.top = top;
}

