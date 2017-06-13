


def class ConfigReader{

    def static dconfExport(){
        def dconfExports="dconf dump /".execute().text
        return dconfExports
    }

    def static gsettingsExport(){
        return ProcessForGsettings(readGsettings())
    }

    def static readGsettings(){
        def GsettingsExport="gsettings list-recursively".execute().text
        return GsettingsExport
    }

    def static ProcessForGsettings(String text){
        List lines=text.split("\n")
        String editedLines=""
        editedLines += "sh installGtkPlugins.sh\n"
        for (line in lines){
            List temp = line.split(/ /)
            def edited="gsettings set"

            if (temp[0]!=null)edited+=" "+temp[0]
            if (temp[1]!=null)edited+=" "+temp[1]
            if (temp[2]!=null)edited+=" \""+temp[2]
            if (temp[3]!=null)edited+=" "+temp[3]
            if (temp[4]!=null)edited+=" "+temp[4]

            edited+="\"\n"
            editedLines+=edited
        }
        return editedLines
    }

    def static saveTofile(String output, String filename){
        new File(filename).write(output)
    }
}

def result = new ConfigReader()
def dconfResult =result.dconfExport()
result.saveTofile(dconfResult , "dconf.conf")
def gsettingsResult =result.gsettingsExport()+"\ndconf load / < dconf.conf"
result.saveTofile(gsettingsResult , "gsettingsRestore.sh")

println(dconfResult)
println(gsettingsResult)
