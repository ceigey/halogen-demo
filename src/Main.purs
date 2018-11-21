module Main where

import Prelude
import Effect (Effect)
import Effect.Console (log)
import Effect.Aff (Aff)
import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)

import Component (component)

-- https://stackoverflow.com/questions/46403106/how-to-get-from-pulp-init-to-running-code-in-browser

main :: Effect Unit
main = do
  log "Hello sailor!"
  -- Note that this also returns Effect Unit...
  -- so just check the type signature and nest it!
  HA.runHalogenAff do
    body <- HA.awaitBody
    runUI component unit body
