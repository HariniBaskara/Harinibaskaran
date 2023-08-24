public with sharing class CountryWebServiceImpl
{
    public static void CountryName()
    {
        CountryWebService.CountryInfoServiceSoap counName =new CountryWebService.CountryInfoServiceSoap();
        System.debug(counName.CountryName('IN'));
    }
    public static void CountryFlag()
    {
        CountryWebService.CountryInfoServiceSoap FlagofCountry = new CountryWebService.CountryInfoServiceSoap();
        System.debug(FlagofCountry.CountryFlag('IN'));
    }
    public static void CountryIntPhoneCode()
    {
        CountryWebService.CountryInfoServiceSoap counyName =new CountryWebService.CountryInfoServiceSoap();
        System.debug(counyName.CountryIntPhoneCode('IN'));
    }
    public static void CurrencyName()
    {
        CountryWebService.CountryInfoServiceSoap counam =new CountryWebService.CountryInfoServiceSoap(); 
        System.debug(counam.CurrencyName('INR'));
    }
    public static void LanguageISOCode()
    {
        CountryWebService.CountryInfoServiceSoap counlan =new CountryWebService.CountryInfoServiceSoap(); 
        System.debug(counlan.LanguageISOCode('TAMIL'));
    }
    public static void CapitalCity()
    {
        CountryWebService.CountryInfoServiceSoap councap =new CountryWebService.CountryInfoServiceSoap();  
        System.debug(councap.CapitalCity('IN'));
    }
    public static void LanguageName()
    {
        CountryWebService.CountryInfoServiceSoap langNam=new CountryWebService.CountryInfoServiceSoap();
        System.debug(langNam.LanguageName('ENG'));
    }
    public static void CountryISOCode()
    {
        CountryWebService.CountryInfoServiceSoap counIso =new CountryWebService.CountryInfoServiceSoap();
        System.debug(counIso.CountryISOCode('Ind'));
    }
    
    public static void CountryCurrency()
    {
        CountryWebService.CountryInfoServiceSoap getCurrency = new CountryWebService.CountryInfoServiceSoap();
        CountryWebService.tCurrency currencyName = getCurrency.CountryCurrency('US');
        System.debug(currencyName.sISOCode);
    }
    
}