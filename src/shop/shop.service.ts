import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { Shop } from '../entity/shop.entity';
import { CreateShopDto } from './dto/create-shop.dto';
import { UpdateShopDto } from './dto/update-shop.dto';

@Injectable()
export class ShopService {
  constructor(
    @InjectRepository(Shop)
    private readonly shopRepository: Repository<Shop>,
  ) {}

  async findAll() {
    return this.shopRepository.find({
      relations: ['user'],
    });
  }

  async save(dto: CreateShopDto) {
    return await this.shopRepository.save(dto);
  }

  async update(id: number, dto: UpdateShopDto) {
    await this.shopRepository.update(id, dto);
    return await this.shopRepository.findOne({
      where: { id },
      relations: ['user'],
    });
  }

  async delete(id: number) {
    return await this.shopRepository.delete(id);
  }
}
