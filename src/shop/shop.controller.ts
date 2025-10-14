import {
  Body,
  Controller,
  Delete,
  Get,
  Param,
  ParseIntPipe,
  Patch,
  Post,
} from '@nestjs/common';
import { ShopService } from './shop.service';
import { CreateShopDto } from './dto/create-shop.dto';
import { UpdateShopDto } from './dto/update-shop.dto';

@Controller('shop')
export class ShopController {
  constructor(private readonly shopService: ShopService) {}

  @Get()
  async findAll() {
    return this.shopService.findAll();
  }

  @Post()
  save(@Body() dto: CreateShopDto) {
    return this.shopService.save(dto);
  }

  @Patch()
  update(@Param('id', ParseIntPipe) id: number, @Body() dto: UpdateShopDto) {
    return this.shopService.update(id, dto);
  }

  @Delete(':id')
  delete(@Param('id', ParseIntPipe) id: number) {
    return this.shopService.delete(id);
  }
}
