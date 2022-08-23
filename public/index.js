async function websiteVisits()  {
  const res = await fetch(
   // "https://api.countapi.xyz/hit/wdhosfuy90sdf780s/d643b041-50bb-4c3c-816a-bb2629a19448"
   "https://resumevisits.azurewebsites.net/api/resumevisitcounter"
  )

  numberOfHits = await res.json()
  document.querySelector("#visits").textContent = numberOfHits.value;
  
}


websiteVisits()
