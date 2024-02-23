FROM baseImageA AS build
WORKDIR /source

FROM baseImageB
WORKDIR /dest
COPY --from=build /source /dest
